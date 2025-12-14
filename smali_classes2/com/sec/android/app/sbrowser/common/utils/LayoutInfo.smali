.class public final Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0012\u001a\u0004\u0008\u0014\u0010\rR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0015\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0012\u001a\u0004\u0008\u0016\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;",
        "",
        "",
        "x",
        "y",
        "width",
        "height",
        "<init>",
        "(IIII)V",
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
        "getX",
        "getY",
        "getWidth",
        "getHeight",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final height:I

.field private final width:I

.field private final x:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->Companion:Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    return-void
.end method

.method public static final getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->Companion:Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;->getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object p0

    return-object p0
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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    return p0
.end method

.method public final getX()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->x:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->y:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->width:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->height:I

    const-string v3, "LayoutInfo(x="

    const-string v4, ", y="

    const-string v5, ", width="

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
