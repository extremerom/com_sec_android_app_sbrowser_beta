.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->a:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->b:Ljava/util/List;

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->a:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/e;->b:Ljava/util/List;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->j(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;ILandroid/content/DialogInterface;I)V

    return-void
.end method
