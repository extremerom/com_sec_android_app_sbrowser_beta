.class public final Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008 \u0008\u0087\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u000fR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0015\u001a\u0004\u0008\u0017\u0010\u000f\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001f\u001a\u0004\u0008 \u0010\u0011R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010!\u001a\u0004\u0008\n\u0010\"\"\u0004\u0008#\u0010$R\"\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u001f\u001a\u0004\u0008%\u0010\u0011\"\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "",
        "",
        "url",
        "title",
        "",
        "visitTime",
        "",
        "visitCount",
        "",
        "isSelected",
        "backgroundColor",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JIZI)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getUrl",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "J",
        "getVisitTime",
        "()J",
        "setVisitTime",
        "(J)V",
        "I",
        "getVisitCount",
        "Z",
        "()Z",
        "setSelected",
        "(Z)V",
        "getBackgroundColor",
        "setBackgroundColor",
        "(I)V",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private backgroundColor:I

.field private isSelected:Z

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visitCount:I

.field private visitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZI)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitTime:J

    iput p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitCount:I

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->isSelected:Z

    iput p7, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitTime:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->isSelected:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->isSelected:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitTime:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitCount:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->isSelected:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitTime:J

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->visitCount:I

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->isSelected:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->backgroundColor:I

    const-string v6, "HistoryIconItem(url="

    const-string v7, ", title="

    const-string v8, ", visitTime="

    invoke-static {v6, v0, v7, v1, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", visitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
