.class public final LH/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/q;->a:Landroid/content/Intent;

    iput-object p2, p0, LH/q;->b:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/content/Intent;I)LH/b;
    .locals 4

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-gt p1, v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LH/b;->a(Landroid/os/Bundle;)LH/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LH/b;->a(Landroid/os/Bundle;)LH/b;

    move-result-object v0

    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_5

    invoke-static {p0}, LH/b;->a(Landroid/os/Bundle;)LH/b;

    move-result-object p0

    new-instance p1, LH/b;

    iget-object v1, p0, LH/b;->a:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, v0, LH/b;->a:Ljava/lang/Integer;

    :cond_1
    iget-object v2, p0, LH/b;->b:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, v0, LH/b;->b:Ljava/lang/Integer;

    :cond_2
    iget-object v3, p0, LH/b;->c:Ljava/lang/Integer;

    if-nez v3, :cond_3

    iget-object v3, v0, LH/b;->c:Ljava/lang/Integer;

    :cond_3
    iget-object p0, p0, LH/b;->d:Ljava/lang/Integer;

    if-nez p0, :cond_4

    iget-object p0, v0, LH/b;->d:Ljava/lang/Integer;

    :cond_4
    invoke-direct {p1, v1, v2, v3, p0}, LH/b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1

    :cond_5
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid colorScheme: "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
