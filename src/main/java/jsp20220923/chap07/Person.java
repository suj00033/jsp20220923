package jsp20220923.chap07;

public class Person {
	// 읽고 쓸 수 있는
	// name, age 프로퍼티 작성
	private String name;
	private Integer age;
	private boolean alive;
	
	public boolean isAlive() {			// boolean type 읽기 프로퍼티의 메소드는 is로 시작 > get(x)
		return alive;
	}
	
	public void setAlive(boolean alive) {
		this.alive = alive;
	}
	
	public Person() {
		
	}
	
	public String getName() {
		return name;
	}
	
	public Integer getAge() {
		return age;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setAge(Integer age) {
		this.age = age;
	}
}
