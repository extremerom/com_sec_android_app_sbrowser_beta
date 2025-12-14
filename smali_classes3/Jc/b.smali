.class public final LJc/b;
.super Lfb/b;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Iterator;

.field public final d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;LC9/a;)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/b;->c:Ljava/util/Iterator;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LJc/b;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    :cond_0
    iget-object v0, p0, LJc/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LJc/b;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfb/b;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lfb/b;->a:I

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lfb/b;->a:I

    return-void
.end method
