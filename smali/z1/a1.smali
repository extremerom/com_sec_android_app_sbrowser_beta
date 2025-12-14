.class public final Lz1/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/b1;


# static fields
.field public static final a:Lz1/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/a1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/a1;->a:Lz1/a1;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SizeMode.Single"

    return-object p0
.end method
