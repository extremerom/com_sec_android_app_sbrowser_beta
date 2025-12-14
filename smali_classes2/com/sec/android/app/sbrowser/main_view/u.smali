.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/u;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/u;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/u;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/u;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method
