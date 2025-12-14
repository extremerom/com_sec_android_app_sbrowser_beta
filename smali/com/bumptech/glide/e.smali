.class public final Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:LT3/f;

.field public final b:LS3/o;

.field public final c:LE5/v;

.field public final d:LO7/a;

.field public final e:Ljava/util/List;

.field public final f:LN/f;

.field public final g:LS3/p;

.field public final h:LJ7/c;

.field public final i:I

.field public j:Lh4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lj4/b;->b:Lj4/a;

    iput-object v1, v0, Lcom/bumptech/glide/a;->a:Lj4/a;

    sput-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LT3/f;LV9/a;LE5/v;LO7/a;LN/f;Ljava/util/List;LS3/p;LJ7/c;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/e;->a:LT3/f;

    iput-object p4, p0, Lcom/bumptech/glide/e;->c:LE5/v;

    iput-object p5, p0, Lcom/bumptech/glide/e;->d:LO7/a;

    iput-object p7, p0, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/e;->f:LN/f;

    iput-object p8, p0, Lcom/bumptech/glide/e;->g:LS3/p;

    iput-object p9, p0, Lcom/bumptech/glide/e;->h:LJ7/c;

    const/4 p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/e;->i:I

    new-instance p1, LS3/o;

    invoke-direct {p1, p3}, LS3/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/e;->b:LS3/o;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/h;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/e;->b:LS3/o;

    invoke-virtual {p0}, LS3/o;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/h;

    return-object p0
.end method
