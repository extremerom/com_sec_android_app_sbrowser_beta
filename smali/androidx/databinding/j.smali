.class public final Landroidx/databinding/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[Ljava/lang/String;

.field public final b:[[I

.field public final c:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [[Ljava/lang/String;

    iput-object v1, p0, Landroidx/databinding/j;->a:[[Ljava/lang/String;

    new-array v1, v0, [[I

    iput-object v1, p0, Landroidx/databinding/j;->b:[[I

    new-array v0, v0, [[I

    iput-object v0, p0, Landroidx/databinding/j;->c:[[I

    return-void
.end method
