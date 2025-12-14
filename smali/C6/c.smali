.class public final LC6/c;
.super LW0/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:LG5/w;

.field public final synthetic f:LC6/e;


# direct methods
.method public constructor <init>(LC6/e;LG5/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC6/c;->f:LC6/e;

    iput-object p2, p0, LC6/c;->e:LG5/w;

    return-void
.end method


# virtual methods
.method public final j(I)V
    .locals 2

    iget-object v0, p0, LC6/c;->f:LC6/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, LC6/e;->m:Z

    iget-object p0, p0, LC6/c;->e:LG5/w;

    invoke-virtual {p0, p1}, LG5/w;->e(I)V

    return-void
.end method

.method public final k(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, LC6/c;->f:LC6/e;

    iget v1, v0, LC6/e;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, LC6/e;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, LC6/e;->m:Z

    iget-object p1, v0, LC6/e;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, LC6/c;->e:LG5/w;

    invoke-virtual {p0, p1, v0}, LG5/w;->f(Landroid/graphics/Typeface;Z)V

    return-void
.end method
