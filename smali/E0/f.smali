.class public final LE0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LNc/y;->a:LNc/y;

    new-instance v1, LE0/e;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LE0/e;-><init>(Lib/g;I)V

    sput-object v1, LE0/f;->a:LE0/e;

    return-void
.end method
