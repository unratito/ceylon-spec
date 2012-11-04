<String, Integer, Float> triple(String s, Integer i, Float f) {
    return (s, i, f);
}

Float add(<Float,Float> floats=(1.0, 2.0)) {
    return floats.first+floats.rest.first;
}

void test() {
    @type["Tuple<String|Integer|Float,String,Tuple<Integer|Float,Integer,Tuple<Float,Float,Empty>>>"] 
    value tup = triple("hello", 0, 0.0);
    @type["String"] value first = tup.first;
    @type["Integer"] value second = tup.rest.first;
    @type["Float"] value third = tup.rest.rest.first;
    @type["Empty"] value nuthin = tup.rest.rest.rest;
    
    <String, String> hibye = ("hello", "goodbye");
    <String, String> fun() {
        return hibye;
    }
    @type["String"] value hi = hibye.first;
    @type["String"] value bye = hibye.rest.first;
    add((1.0, 2.0));
    Sequence<String> strings = hibye;
    @type["Tuple<String,String,Sequential<String>>"]
    <String, String...> hibye1 = hibye;
    @type["Sequential<String>"]
    <String...> hibye2 = hibye;
    <String, Integer, Object...> trip = triple("", 0, 0.0);
    value ints = {1,2,3};
    <String,Integer,Integer...> vartup = ("hello", 4, ints...);
}