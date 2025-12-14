.class public final LS3/a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:LS3/u;

.field public final b:Z

.field public c:LS3/C;


# direct methods
.method public constructor <init>(LS3/u;LS3/v;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LS3/a;->a:LS3/u;

    iget-boolean p1, p2, LS3/v;->a:Z

    const/4 p2, 0x0

    iput-object p2, p0, LS3/a;->c:LS3/C;

    iput-boolean p1, p0, LS3/a;->b:Z

    return-void
.end method
