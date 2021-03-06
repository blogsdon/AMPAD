synapser::synLogin()
foo <- synapser::synGet('syn11914808')
bar <- data.table::fread(foo$path,data.table=F)
baz <- dplyr::select(bar,ensembl_gene_id,fdr.random)
summaryResult <- dplyr::mutate(baz,isChangedInAD = fdr.random<=0.05)
summaryResult <- dplyr::select(summaryResult,-fdr.random)
