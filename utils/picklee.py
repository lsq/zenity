import pickle

dat = open(r'./build/meson-private/meson_exe_perl.exe_43ea5824cfd7a1fd99110486c1430b0d2b2a758d.dat','rb')
data = pickle.load(dat)
print(data)
print(type(data))
