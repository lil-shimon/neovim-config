const EYES: &str = ":";

pub fn smile() -> String { format!("{}{}", EYES, ")") }

pub fn frown() -> String { format!("{}{}", EYES, "(") }

pub fn angry() -> String { format!("{}{}{}", ">", EYES, "(") }

pub fn which(face: &str) -> &'static str { if face == smile() { "Smile" } else if face == frown() { "Frown" } else if face == angry() { "Angry" } else { "I don't know" } }
pub fn not_called() { println!(This is dead code"); unreachable!(); }

fn () ->  {
    
}

fn jfldksajflsa(jfjdalsjflajl) jfsldjflsajlfdj-> jfjlsajldfjla {
    jfklsdjfjas
}

fn () ->  {
    
}
    
