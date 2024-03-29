% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/MagmaGPUD.R
\name{RunServer}
\alias{RunServer}
\title{Creates the R client side shared memory region and then launches a server process which is given access to the shared region. The server then waits for the R client to give it a matrix on which it will compute the eigenvalue decomposition of useing a syevdx_2stage MAGMA library function.}
\usage{
RunServer(environmentSetup = "", numGPUsWanted = 0,
  matrixMaxDimension = 0, memName = "", semName = "", print = 0)
}
\arguments{
\item{environmentSetup}{- type (string)  - Environment variables that need to be set, such as library include paths}

\item{numGPUsWanted}{- type (string)  - The number of GPUs to use in for the symmetric eigenvalue (syevd) computation}

\item{matrixMaxDimension}{- type (integer) - The maximum matrix size that this server instance can handle - sets the shared memory size}

\item{memName}{- type (string)  - A name to give to the named shared memory region (will be created in /dev/shm/) and defaults to the user name if nothing specified}

\item{semName}{- type (string)  - A name to give to the semaphore (will be placed in /dev/shm) and defaults to the user name if nothing specified}

\item{print}{- type (integer 0|1|2) - 0 = don't print, 1 = print details of server progres to screen; 2 = print to log (not functional)}
}
\value{
a vector character values containing output of the make process
}
\description{
Creates the R client side shared memory region and then launches a server process which is given access to the shared region. The server then waits for the R client to give it a matrix on which it will compute the eigenvalue decomposition of useing a syevdx_2stage MAGMA library function.
}
\details{
This function creates a command line with which to call the syevd_server executable and then calls the executable with a non-blocking system() call
 to launch the server process. The server then waits for the client to send it matrix data via the syevdx_client() function. The matrixMaxDimension paramater
 specifies the largest size matrix that can be processed by this instance of the syevd_server().
}

