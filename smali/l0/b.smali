.class public abstract Ll0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/L0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ll0/a;->a:Ll0/a;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Ll0/b;->a:La0/L0;

    return-void
.end method
