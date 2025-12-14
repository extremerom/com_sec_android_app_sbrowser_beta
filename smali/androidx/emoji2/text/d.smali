.class public final Landroidx/emoji2/text/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;LL5/b;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH4/s;

    invoke-direct {v0, p1}, LH4/s;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    new-instance p1, Lc5/m;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->c(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lc5/m;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lc5/n;)V
    .locals 3

    new-instance v0, Lc5/A;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p0, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    check-cast p0, LH4/s;

    invoke-virtual {p0, v0}, LH4/s;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
