.class final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v3, Lzd/a;

    const-string v4, "encodeBase64String"

    const/4 v1, 0x1

    const-string v5, "encodeBase64String([B)Ljava/lang/String;"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;->invoke([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lzd/a;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
