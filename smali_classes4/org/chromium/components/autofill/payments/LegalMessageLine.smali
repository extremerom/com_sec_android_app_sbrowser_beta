.class public Lorg/chromium/components/autofill/payments/LegalMessageLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field public final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->text:Ljava/lang/String;

    new-instance p1, LH9/d;

    const/16 v0, 0x17

    invoke-direct {p1, v0, p0}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private addLink(IILjava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    new-instance v0, Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLink(Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/chromium/components/autofill/payments/LegalMessageLine;

    iget-object v2, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->text:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/payments/LegalMessageLine;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    iget-object p1, p1, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->text:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;->links:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
