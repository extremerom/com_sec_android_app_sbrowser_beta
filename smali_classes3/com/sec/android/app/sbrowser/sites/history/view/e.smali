.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane$Delegate;
.implements Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchVideoHistory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/e;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/e;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/e;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    return-void
.end method
