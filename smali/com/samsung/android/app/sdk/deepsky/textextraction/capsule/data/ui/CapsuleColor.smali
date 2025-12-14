.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u000eR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0013\u001a\u0004\u0008\u0015\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0013\u001a\u0004\u0008\u0016\u0010\u000eR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;",
        "",
        "",
        "backgroundColor",
        "textColor",
        "pressedBackgroundColor",
        "pressedTextColor",
        "rippleColor",
        "<init>",
        "(IIIII)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getBackgroundColor",
        "getTextColor",
        "getPressedBackgroundColor",
        "getPressedTextColor",
        "getRippleColor",
        "deepsky-sdk-textextraction-8.5.6_release"
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
.field private final backgroundColor:I

.field private final pressedBackgroundColor:I

.field private final pressedTextColor:I

.field private final rippleColor:I

.field private final textColor:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    iput p4, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    iput p5, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

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
    instance-of v1, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

    iget p1, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    return p0
.end method

.method public final getPressedBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    return p0
.end method

.method public final getPressedTextColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    return p0
.end method

.method public final getRippleColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

    return p0
.end method

.method public final getTextColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->backgroundColor:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->textColor:I

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedBackgroundColor:I

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->pressedTextColor:I

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->rippleColor:I

    const-string v4, "CapsuleColor(backgroundColor="

    const-string v5, ", textColor="

    const-string v6, ", pressedBackgroundColor="

    invoke-static {v0, v1, v4, v5, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressedTextColor="

    const-string v4, ", rippleColor="

    invoke-static {v0, v2, v1, v3, v4}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
