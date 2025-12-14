.class public final LJc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;


# instance fields
.field public final a:Lsb/a;

.field public final b:Lsb/k;


# direct methods
.method public constructor <init>(Lsb/k;Lsb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJc/k;->a:Lsb/a;

    iput-object p1, p0, LJc/k;->b:Lsb/k;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LJc/j;

    invoke-direct {v0, p0}, LJc/j;-><init>(LJc/k;)V

    return-object v0
.end method
