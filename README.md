# Dynare on Python

Turns out its very easy to use dynare with python. I wish I knew this before. The possibilities are now limitless.

1. Install dynare from http://www.dynare.org/download. Make sure to check the box for dynare++
2. (optional) Put dynare++ in the system path (meaning you put the path to your dynare++ which should be something like C:\dynare\4.5.6\dynare++ into your system path). A lot of Google tutorials on how to do this
3. Make sure ot have python installed along with scipy
4. Make a .mod file to make a model in dynare. Go to the path of your .mod file through command prompt. Type in "dynare++ \<yourfile\>.mod"
5. Using scipy in python, you can import the resultant .mat file created by dynare (it'll be in the same location as the .mod file). The code is scipy.io.loadmat("yourfile.mat").
6. You will have to assign that to an object. The resultant object is a dictionary of all the objects dynare created. From here, you can use any dynare tutorial to explore your model
7. Don't forget that dynare indices start from 1, whereas python's starts from 0.
    
