package db;

import java.util.HashSet;
import java.util.Set;

public class HashSetD {
    Set<String> unique=new HashSet<>();
    public void selectedM(String mid){
        unique.add(mid);
    }
    public Set<String> getUnique(){
        return unique;
    }
}
