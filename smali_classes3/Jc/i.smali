.class public final LJc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;


# instance fields
.field public final a:LJc/l;

.field public final b:Lsb/k;

.field public final c:Lsb/k;


# direct methods
.method public constructor <init>(LJc/l;Lsb/k;Lsb/k;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/i;->a:LJc/l;

    iput-object p2, p0, LJc/i;->b:Lsb/k;

    iput-object p3, p0, LJc/i;->c:Lsb/k;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LJc/g;

    invoke-direct {v0, p0}, LJc/g;-><init>(LJc/i;)V

    return-object v0
.end method
