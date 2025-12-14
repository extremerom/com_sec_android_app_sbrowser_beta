.class public abstract Lwd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwd/j;->d:Lwd/j;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    iget-object v0, v0, Lwd/j;->a:[B

    sput-object v0, Lwd/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    return-void
.end method
