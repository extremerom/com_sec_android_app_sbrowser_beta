.class public abstract Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lw0/h;->a:Lw0/h;

    new-instance v1, LA0/g;

    invoke-direct {v1, v0}, LA0/g;-><init>(Lsb/a;)V

    sput-object v1, Lw0/i;->a:LA0/g;

    return-void
.end method
