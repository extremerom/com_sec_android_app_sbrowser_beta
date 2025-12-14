.class public final Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initialized"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0008\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0011\u001a\u0004\u0008\u0003\u0010\u0012R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0011\u001a\u0004\u0008\u0004\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;",
        "Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;",
        "",
        "isSignedIn",
        "isMinor",
        "<init>",
        "(ZZ)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "()Z",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isMinor:Z

.field private final isSignedIn:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isMinor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    return p0
.end method

.method public final isSignedIn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialized(isSignedIn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMinor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
