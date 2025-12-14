.class public abstract Lyc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[LAb/u;

.field public static final b:LEc/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, Lyc/j;

    const-string v2, "annotationsAttribute"

    const-string v3, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    new-array v2, v4, [LAb/u;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lyc/j;->a:[LAb/u;

    sget-object v0, Lyc/H;->b:LA7/h;

    const-class v2, Lyc/i;

    invoke-virtual {v1, v2}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LEc/p;

    invoke-interface {v1}, LAb/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LA7/h;->g(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, LEc/p;-><init>(I)V

    sput-object v2, Lyc/j;->b:LEc/p;

    return-void
.end method

.method public static final a(Lyc/H;)LKb/h;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyc/j;->a:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lyc/j;->b:LEc/p;

    invoke-virtual {v1, p0, v0}, LEc/p;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/i;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyc/i;->a:LKb/h;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, LKb/g;->a:LKb/f;

    :cond_1
    return-object p0
.end method
