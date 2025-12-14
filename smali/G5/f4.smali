.class public final LG5/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:LG5/o4;

.field public static final k:LG5/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:LG5/d4;

.field public final d:LQ7/h;

.field public final e:LR5/p;

.field public final f:LR5/p;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LG5/d;

    invoke-direct {v1, v0}, LG5/d;-><init>([Ljava/lang/Object;)V

    sput-object v1, LG5/f4;->k:LG5/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LQ7/h;LG5/d4;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG5/f4;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG5/f4;->a:Ljava/lang/String;

    invoke-static {p1}, LQ7/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG5/f4;->b:Ljava/lang/String;

    iput-object p2, p0, LG5/f4;->d:LQ7/h;

    iput-object p3, p0, LG5/f4;->c:LG5/d4;

    invoke-static {}, LG5/i4;->b()V

    iput-object p4, p0, LG5/f4;->g:Ljava/lang/String;

    invoke-static {}, LQ7/e;->a()LQ7/e;

    move-result-object p3

    new-instance v0, LE5/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LE5/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LQ7/e;->b(Ljava/util/concurrent/Callable;)LR5/p;

    move-result-object p3

    iput-object p3, p0, LG5/f4;->e:LR5/p;

    invoke-static {}, LQ7/e;->a()LQ7/e;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LE5/q;

    invoke-direct {v0, p2, v1}, LE5/q;-><init>(LQ7/h;I)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LQ7/e;->b(Ljava/util/concurrent/Callable;)LR5/p;

    move-result-object p2

    iput-object p2, p0, LG5/f4;->f:LR5/p;

    sget-object p2, LG5/f4;->k:LG5/d;

    invoke-virtual {p2, p4}, LG5/d;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, LG5/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Ln5/d;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, LG5/f4;->h:I

    return-void
.end method
