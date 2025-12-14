.class public final LKc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lsb/n;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILsb/n;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKc/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, LKc/c;->b:I

    iput p3, p0, LKc/c;->c:I

    iput-object p4, p0, LKc/c;->d:Lsb/n;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LKc/b;

    invoke-direct {v0, p0}, LKc/b;-><init>(LKc/c;)V

    return-object v0
.end method
