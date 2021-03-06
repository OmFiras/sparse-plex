Signals
========================

.. highlight:: matlab


Our focus is usually on finite 
dimensional signals. Such signals
are usually stored as column vectors
in MATLAB. A set of signals with same
dimensions can
be stored together in the form of
a matrix where each column of the matrix
is one signal.  Such a matrix of
signals is called a ``signal matrix``.

In this section we describe some
helper utility functions which provide
extra functionality on top of existing
support in MATLAB.


General
-----------

 Constructing unit (column) vector in a given co-ordinate::
    
    >> N = 8; i = 2;    
    >> spx.commons.vector.unit_vector(N, i)'
    0     1     0     0     0     0     0     0



Sparsification
---------------------------

Finding the K-largest indices of a given signal::

    >> x = [0 0 0  1 0 0 -1 0 0 -2 0 0 -3 0 0 7 0 0 4 0 0 -6];
    >> K=4;
    >> spx.commons.signals.largest_indices(x, K)'
    16    22    19    13

Constructing the sparse approximation of ``x``
with ``K`` largest indices::

    >> spx.commons.signals.sparseApproximation(x, K)'
    0     0     0     0     0     0     0     0     0     0     0     0    -3     0     0     7     0     0     4     0     0    -6

Searching
----------------------


``spx.commons.signals.find_first_signal_with_energy_le`` 
finds the first signal in a signal matrix ``X``
with an energy less than or equal to 
a given ``threshold`` energy::

    [x, i] = spx.commons.signals.find_first_signal_with_energy_le(X, threshold);

``x`` is the first signal with energy less
than the given threshold. 
``i`` is the index of the column in ``X`` holding
this signal.


