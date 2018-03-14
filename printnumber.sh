#!/bin/bash
for i in $(seq 56)
do
  echo "
  	\begin{figure}[ht!]
  	\centering
	\includegraphics[width=\linewidth]{BK_BLAK_006132-$i.jpg}
	\end{figure}
       "
done
