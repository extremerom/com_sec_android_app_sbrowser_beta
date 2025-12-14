.class public final synthetic Ll9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ll9/d;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ll9/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9/c;->a:Ll9/d;

    iput-boolean p2, p0, Ll9/c;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/View;

    const-string v0, "this$0"

    iget-object v1, p0, Ll9/c;->a:Ll9/d;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Ll9/j;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Ll9/c;->b:Z

    invoke-virtual {v0, p1, p0}, Lj9/h;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
