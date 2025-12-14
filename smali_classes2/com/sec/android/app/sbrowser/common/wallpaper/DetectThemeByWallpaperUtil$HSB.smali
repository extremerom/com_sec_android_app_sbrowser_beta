.class final Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HSB"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0014\u001a\u0004\u0008\u0015\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0014\u001a\u0004\u0008\u0016\u0010\tR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0017\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;",
        "",
        "",
        "h",
        "s",
        "b",
        "<init>",
        "(III)V",
        "component1",
        "()I",
        "component2",
        "component3",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getH",
        "getS",
        "getB",
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
.field private final b:I

.field private final h:I

.field private final s:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    return p0
.end method

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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->h:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->s:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil$HSB;->b:I

    const-string v2, "HSB(h="

    const-string v3, ", s="

    const-string v4, ", b="

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
