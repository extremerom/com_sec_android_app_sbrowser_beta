.class public final LE3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LE3/h;


# instance fields
.field public final a:LN/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE3/h;

    invoke-direct {v0}, LE3/h;-><init>()V

    sput-object v0, LE3/h;->b:LE3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/m;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LN/m;-><init>(I)V

    iput-object v0, p0, LE3/h;->a:LN/m;

    return-void
.end method
