.class public final LF6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LG5/z2;

.field public b:LG5/z2;

.field public c:LG5/z2;

.field public d:LG5/z2;

.field public e:LF6/c;

.field public f:LF6/c;

.field public g:LF6/c;

.field public h:LF6/c;

.field public i:LF6/e;

.field public j:LF6/e;

.field public k:LF6/e;

.field public l:LF6/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LF6/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->a:LG5/z2;

    new-instance v0, LF6/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->b:LG5/z2;

    new-instance v0, LF6/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->c:LG5/z2;

    new-instance v0, LF6/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->d:LG5/z2;

    new-instance v0, LF6/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF6/a;-><init>(F)V

    iput-object v0, p0, LF6/j;->e:LF6/c;

    new-instance v0, LF6/a;

    invoke-direct {v0, v1}, LF6/a;-><init>(F)V

    iput-object v0, p0, LF6/j;->f:LF6/c;

    new-instance v0, LF6/a;

    invoke-direct {v0, v1}, LF6/a;-><init>(F)V

    iput-object v0, p0, LF6/j;->g:LF6/c;

    new-instance v0, LF6/a;

    invoke-direct {v0, v1}, LF6/a;-><init>(F)V

    iput-object v0, p0, LF6/j;->h:LF6/c;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->i:LF6/e;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->j:LF6/e;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->k:LF6/e;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/j;->l:LF6/e;

    return-void
.end method

.method public static b(LG5/z2;)V
    .locals 1

    instance-of v0, p0, LF6/i;

    if-eqz v0, :cond_0

    check-cast p0, LF6/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, LF6/d;

    if-eqz v0, :cond_1

    check-cast p0, LF6/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()LF6/k;
    .locals 2

    new-instance v0, LF6/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LF6/j;->a:LG5/z2;

    iput-object v1, v0, LF6/k;->a:LG5/z2;

    iget-object v1, p0, LF6/j;->b:LG5/z2;

    iput-object v1, v0, LF6/k;->b:LG5/z2;

    iget-object v1, p0, LF6/j;->c:LG5/z2;

    iput-object v1, v0, LF6/k;->c:LG5/z2;

    iget-object v1, p0, LF6/j;->d:LG5/z2;

    iput-object v1, v0, LF6/k;->d:LG5/z2;

    iget-object v1, p0, LF6/j;->e:LF6/c;

    iput-object v1, v0, LF6/k;->e:LF6/c;

    iget-object v1, p0, LF6/j;->f:LF6/c;

    iput-object v1, v0, LF6/k;->f:LF6/c;

    iget-object v1, p0, LF6/j;->g:LF6/c;

    iput-object v1, v0, LF6/k;->g:LF6/c;

    iget-object v1, p0, LF6/j;->h:LF6/c;

    iput-object v1, v0, LF6/k;->h:LF6/c;

    iget-object v1, p0, LF6/j;->i:LF6/e;

    iput-object v1, v0, LF6/k;->i:LF6/e;

    iget-object v1, p0, LF6/j;->j:LF6/e;

    iput-object v1, v0, LF6/k;->j:LF6/e;

    iget-object v1, p0, LF6/j;->k:LF6/e;

    iput-object v1, v0, LF6/k;->k:LF6/e;

    iget-object p0, p0, LF6/j;->l:LF6/e;

    iput-object p0, v0, LF6/k;->l:LF6/e;

    return-object v0
.end method
