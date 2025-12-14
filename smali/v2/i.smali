.class public final Lv2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

.field public final b:Landroidx/recyclerview/widget/c;

.field public final c:Lib/h;

.field public final d:LQc/A0;

.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Lv2/e;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:LQc/h;

.field public final j:LQc/g0;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Lm9/g;

.field public final n:Ldb/o;

.field public final o:Lc5/A;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;Landroidx/recyclerview/widget/c;Lib/h;Lib/h;)V
    .locals 1

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/i;->a:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    iput-object p2, p0, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    iput-object p4, p0, Lv2/i;->c:Lib/h;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lv2/i;->d:LQc/A0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lv2/e;

    invoke-direct {p1, p0, p3}, Lv2/e;-><init>(Lv2/i;Lib/h;)V

    iput-object p1, p0, Lv2/i;->g:Lv2/e;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lv2/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, LQc/k;

    iget-object p4, p1, Lv2/e;->k:LQc/h0;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p4}, LQc/k;-><init>(ILjava/lang/Object;)V

    const/4 p4, -0x1

    invoke-static {p3, p4}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p3

    new-instance p4, Lv2/h;

    invoke-direct {p4, p3, p2, p0}, Lv2/h;-><init>(LQc/h;Lib/c;Lv2/i;)V

    new-instance p3, LQc/k;

    invoke-direct {p3, p4}, LQc/k;-><init>(Lsb/n;)V

    sget-object p4, LNc/N;->a:LWc/f;

    sget-object p4, LUc/q;->a:LNc/w0;

    invoke-static {p3, p4}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p3

    iput-object p3, p0, Lv2/i;->i:LQc/h;

    iget-object p1, p1, Lv2/e;->l:LQc/m0;

    new-instance p3, LQc/g0;

    invoke-direct {p3, p1}, LQc/g0;-><init>(LQc/e0;)V

    iput-object p3, p0, Lv2/i;->j:LQc/g0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lv2/i;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lv2/i;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lm9/g;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lm9/g;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lv2/i;->m:Lm9/g;

    sget-object p1, Lv2/a;->b:Lv2/a;

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lv2/i;->n:Ldb/o;

    new-instance p1, Lc5/A;

    invoke-direct {p1, p0}, Lc5/A;-><init>(Lv2/i;)V

    iput-object p1, p0, Lv2/i;->o:Lc5/A;

    return-void
.end method
