.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 5

    const-class p0, LU7/e;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, LT7/b;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v1, LU7/b;->b:LU7/b;

    iput-object v1, v0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v0

    const-class v1, LU7/a;

    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    const-class p0, LQ7/d;

    invoke-static {p0}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object p0, LU7/b;->c:LU7/b;

    iput-object p0, v1, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v1}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-ge v4, v3, :cond_1

    sget-object v0, LG5/m4;->b:LG5/k4;

    aget-object v0, p0, v4

    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, LG5/m4;->b:LG5/k4;

    new-instance v0, LG5/o4;

    invoke-direct {v0, v3, p0}, LG5/o4;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method
