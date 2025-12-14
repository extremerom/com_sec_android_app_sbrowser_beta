.class public abstract Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm7/b;

.field public static final b:Lm7/b;

.field public static final c:Lm7/b;

.field public static final d:Lm7/b;

.field public static final e:Lm7/b;

.field public static final f:Lm7/b;

.field public static final g:Lm7/b;

.field public static final h:Lm7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Ljava/lang/ArithmeticException;"

    invoke-static {v0}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v0

    const-string v1, "Ljava/lang/ArrayIndexOutOfBoundsException;"

    invoke-static {v1}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v1

    const-string v2, "Ljava/lang/ArrayStoreException;"

    invoke-static {v2}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v2

    const-string v3, "Ljava/lang/ClassCastException;"

    invoke-static {v3}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v3

    const-string v4, "Ljava/lang/Error;"

    invoke-static {v4}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v4

    const-string v5, "Ljava/lang/IllegalMonitorStateException;"

    invoke-static {v5}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v5

    const-string v6, "Ljava/lang/NegativeArraySizeException;"

    invoke-static {v6}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v6

    const-string v7, "Ljava/lang/NullPointerException;"

    invoke-static {v7}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v7

    invoke-static {v4}, Lm7/b;->h(Lm7/c;)Lm7/b;

    move-result-object v8

    sput-object v8, Lk7/d;->a:Lm7/b;

    invoke-static {v4, v0}, Lm7/b;->k(Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->b:Lm7/b;

    invoke-static {v4, v3}, Lm7/b;->k(Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->c:Lm7/b;

    invoke-static {v4, v6}, Lm7/b;->k(Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->d:Lm7/b;

    invoke-static {v4, v7}, Lm7/b;->k(Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->e:Lm7/b;

    invoke-static {v4, v7, v1}, Lm7/b;->l(Lm7/c;Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->f:Lm7/b;

    new-instance v0, Lm7/b;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Ln7/e;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v7}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ln7/e;->f(ILjava/lang/Object;)V

    sput-object v0, Lk7/d;->g:Lm7/b;

    invoke-static {v4, v7, v5}, Lm7/b;->l(Lm7/c;Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v0

    sput-object v0, Lk7/d;->h:Lm7/b;

    return-void
.end method
