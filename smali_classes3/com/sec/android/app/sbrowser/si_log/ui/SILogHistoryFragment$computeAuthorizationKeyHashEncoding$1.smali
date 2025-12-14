.class final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->computeAuthorizationKeyHashEncoding$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/String;Lsb/k;Lsb/k;ILjava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/j;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v3, LAd/a;

    const-string v4, "sha256"

    const/4 v1, 0x1

    const-string v5, "sha256(Ljava/lang/String;)[B"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;->invoke(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)[B
    .locals 0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    const-string p1, "SHA-256"

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
