% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S4_classes.r
\docType{class}
\name{git_transfer_progress-class}
\alias{git_transfer_progress-class}
\title{Class \code{"git_transfer_progress"}}
\description{
Statistics from the fetch operation.
}
\section{Slots}{

\describe{
  \item{total_objects}{
    Number of objects in the packfile being downloaded
  }
  \item{indexed_objects}{
    Received objects that have been hashed
  }
  \item{received_objects}{
    Objects which have been downloaded
  }
  \item{total_deltas}{
    Total number of deltas in the pack
  }
  \item{indexed_deltas}{
    Deltas which have been indexed
  }
  \item{local_objects}{
    Locally-available objects that have been injected in order to
    fix a thin pack
  }
  \item{received_bytes}{
    Size of the packfile received up to now
  }
}
}
\keyword{classes}
\keyword{methods}

