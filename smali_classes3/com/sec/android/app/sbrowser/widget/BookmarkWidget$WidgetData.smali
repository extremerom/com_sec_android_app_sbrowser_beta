.class public final Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0011R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\'\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\u001d\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;",
        "",
        "",
        "appWidgetId",
        "",
        "appWidgetBackground",
        "Ljava/util/ArrayList;",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
        "Lkotlin/collections/ArrayList;",
        "adapterData",
        "count",
        "<init>",
        "(IZLjava/util/ArrayList;I)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getAppWidgetId",
        "Z",
        "getAppWidgetBackground",
        "()Z",
        "Ljava/util/ArrayList;",
        "getAdapterData",
        "()Ljava/util/ArrayList;",
        "getCount",
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
.field private final adapterData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appWidgetBackground:Z

.field private final appWidgetId:I

.field private final count:I


# direct methods
.method public constructor <init>(IZLjava/util/ArrayList;I)V
    .locals 1
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "adapterData"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    iput p4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAdapterData()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getAppWidgetBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    return p0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    return p0
.end method

.method public final getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetId:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->appWidgetBackground:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->adapterData:Ljava/util/ArrayList;

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->count:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WidgetData(appWidgetId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appWidgetBackground="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", adapterData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
