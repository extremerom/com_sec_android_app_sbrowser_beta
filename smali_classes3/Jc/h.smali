.class public final LJc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;


# instance fields
.field public final a:LJc/l;

.field public final b:Z

.field public final c:Lsb/k;


# direct methods
.method public constructor <init>(LJc/l;ZLsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/h;->a:LJc/l;

    iput-boolean p2, p0, LJc/h;->b:Z

    iput-object p3, p0, LJc/h;->c:Lsb/k;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LJc/g;

    invoke-direct {v0, p0}, LJc/g;-><init>(LJc/h;)V

    return-object v0
.end method
