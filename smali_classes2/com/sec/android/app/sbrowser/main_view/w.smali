.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/w;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/w;->b:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/w;->c:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/w;->d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/List;Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/w;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

    iget v1, p0, Lcom/sec/android/app/sbrowser/main_view/w;->b:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/main_view/w;->c:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/w;->d:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;Z)V

    return-void
.end method
