.class public Lw2/i;
.super Lw2/s;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# instance fields
.field public final i:Ljava/util/HashSet;

.field public j:Z

.field public k:[Ljava/lang/CharSequence;

.field public l:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/s;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw2/i;->i:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final k(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lw2/i;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lw2/s;->i()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iget-object v0, p0, Lw2/i;->i:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->e(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lw2/i;->j:Z

    return-void
.end method

.method public final l(Lm/k;)V
    .locals 5

    iget-object v0, p0, Lw2/i;->l:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lw2/i;->i:Ljava/util/HashSet;

    iget-object v4, p0, Lw2/i;->l:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw2/i;->k:[Ljava/lang/CharSequence;

    new-instance v2, Lw2/h;

    invoke-direct {v2, p0}, Lw2/h;-><init>(Lw2/i;)V

    iget-object p0, p1, Lm/k;->a:Lm/h;

    iput-object v0, p0, Lm/h;->q:[Ljava/lang/CharSequence;

    iput-object v2, p0, Lm/h;->z:Lw2/h;

    iput-object v1, p0, Lm/h;->v:[Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm/h;->w:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lw2/s;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lw2/i;->i:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lw2/s;->i()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iget-object v2, p1, Landroidx/preference/MultiSelectListPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/preference/MultiSelectListPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v3, p1, Landroidx/preference/MultiSelectListPreference;->c:Ljava/util/HashSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-boolean v1, p0, Lw2/i;->j:Z

    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference;->a:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lw2/i;->k:[Ljava/lang/CharSequence;

    iput-object v2, p0, Lw2/i;->l:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lw2/i;->j:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lw2/i;->k:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lw2/i;->l:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lw2/s;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw2/i;->i:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    iget-boolean v1, p0, Lw2/i;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    iget-object v1, p0, Lw2/i;->k:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    iget-object p0, p0, Lw2/i;->l:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
