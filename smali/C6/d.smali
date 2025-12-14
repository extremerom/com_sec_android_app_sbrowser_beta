.class public final LC6/d;
.super LG5/w;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:LG5/w;

.field public final synthetic d:LC6/e;


# direct methods
.method public constructor <init>(LC6/e;Landroid/content/Context;Landroid/text/TextPaint;LG5/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC6/d;->d:LC6/e;

    iput-object p2, p0, LC6/d;->a:Landroid/content/Context;

    iput-object p3, p0, LC6/d;->b:Landroid/text/TextPaint;

    iput-object p4, p0, LC6/d;->c:LG5/w;

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 0

    iget-object p0, p0, LC6/d;->c:LG5/w;

    invoke-virtual {p0, p1}, LG5/w;->e(I)V

    return-void
.end method

.method public final f(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, LC6/d;->b:Landroid/text/TextPaint;

    iget-object v1, p0, LC6/d;->d:LC6/e;

    iget-object v2, p0, LC6/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, LC6/e;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, LC6/d;->c:LG5/w;

    invoke-virtual {p0, p1, p2}, LG5/w;->f(Landroid/graphics/Typeface;Z)V

    return-void
.end method
