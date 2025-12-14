.class public Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdRegistrar;
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
    .locals 3

    const/4 p0, 0x1

    const-class v0, LT7/b;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v0

    iput p0, v0, Lcom/google/firebase/components/a;->e:I

    sget-object v1, LT7/a;->a:LT7/a;

    iput-object v1, v0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v0

    sget-object v1, LF5/e;->b:LF5/c;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v1, LF5/f;

    invoke-direct {v1, p0, v0}, LF5/f;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method
