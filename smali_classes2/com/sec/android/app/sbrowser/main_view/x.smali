.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

.field public final synthetic b:I

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/x;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/x;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/x;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/x;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/x;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;

    iget v1, p0, Lcom/sec/android/app/sbrowser/main_view/x;->b:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/x;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/x;->d:I

    invoke-static {v1, p0, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;->a(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$3;)V

    return-void
.end method
