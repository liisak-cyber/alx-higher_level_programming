#ifndef MAIN_H
#define MAIN_H

/* Task 0: Safe list printing */
int safe_print_list(PyObject *p, int x);

/* Task 1: Safe printing of an integers list */
int safe_print_integer(PyObject *value);

/* Task 2: Print and count integers */
int safe_print_list_integers(PyObject *my_list, int x);

/* Task 3: Integers division with debug */
int safe_print_division(PyObject *a, PyObject *b);

/* Task 4: Divide a list */
PyObject *list_division(PyObject *my_list_1, PyObject *my_list_2, int list_length);

/* Task 5: Raise exception */
void raise_exception(void);

/* Task 6: Raise a message */
void raise_exception_msg(char *message);

/* Task 7: Safe integer print with error message */
int safe_print_integer_err(PyObject *value);

/* Task 8: Safe function */
PyObject *safe_function(PyObject *fct, ...);

/* Task 9: ByteCode -> Python #4 */
PyObject *magic_calculation(PyObject *a, PyObject *b);

/* Task 10: CPython #2: PyFloatObject */
void print_python_list(PyObject *p);
void print_python_bytes(PyObject *p);
void print_python_float(PyObject *p);

#endif /* MAIN_H */
