

Lemma ExF003_1 (X  :Type) : forall {P : X -> Prop}, forall {Q : X -> X}, forall {a : X}, (forall x, P x -> P (Q x)) /\ P a -> P (Q (Q a)).
Proof.
  intros.
  destruct H.
  assert (P a -> P (Q a)).
  specialize (H a).
  exact H.
  pose proof (H (Q a)) as bla.
  apply bla.
  apply H1.
  exact H0.
Qed.


Lemma ExF003_2 (X :Type) : forall {P : X -> Prop}, forall {Q : X -> X}, forall {a : X}, (forall x, P x -> P (Q x)) /\ P a -> P (Q (Q a)).
Proof.
  intros.
  destruct H.
  apply H.
  apply H.
  assumption.
Qed.

