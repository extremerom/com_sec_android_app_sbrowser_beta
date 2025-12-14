.class public final LNc/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/B;


# static fields
.field public static final a:LNc/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNc/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LNc/b0;->a:LNc/b0;

    return-void
.end method


# virtual methods
.method public final v()Lib/h;
    .locals 0

    sget-object p0, Lib/i;->a:Lib/i;

    return-object p0
.end method
