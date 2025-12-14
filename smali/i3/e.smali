.class public final Li3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf3/w;

.field public final c:I

.field public final d:LP7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li3/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/w;ILi3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/e;->a:Landroid/content/Context;

    iput-object p2, p0, Li3/e;->b:Lf3/w;

    iput p3, p0, Li3/e;->c:I

    iget-object p1, p4, Li3/i;->e:Lg3/n;

    iget-object p1, p1, Lg3/n;->j:Lm3/j;

    new-instance p2, LP7/c;

    invoke-direct {p2, p1}, LP7/c;-><init>(Lm3/j;)V

    iput-object p2, p0, Li3/e;->d:LP7/c;

    return-void
.end method
