.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessItemDao$DefaultImpls"
    f = "QuickAccessItemDao.kt"
    l = {
        0x8e,
        0x8f
    }
    m = "deleteItems"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$deleteItems$2;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
