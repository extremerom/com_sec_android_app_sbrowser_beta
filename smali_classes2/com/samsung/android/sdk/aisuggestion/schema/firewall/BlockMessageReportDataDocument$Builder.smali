.class public final Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u00089\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00dd\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010@\u001a\u00020AJ\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010O\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010P\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010R\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u000b\u0010S\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00e6\u0001\u0010T\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010UJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0013\u0010V\u001a\u00020W2\u0008\u0010X\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010Y\u001a\u00020ZH\u00d6\u0001J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0003J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0003J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0003J\t\u0010[\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\u001e\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010\u001eR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008$\u0010\u001c\"\u0004\u0008%\u0010\u001eR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008&\u0010\u001c\"\u0004\u0008\'\u0010\u001eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0018\"\u0004\u0008)\u0010\u001aR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0018\"\u0004\u0008+\u0010\u001aR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0018\"\u0004\u0008-\u0010\u001aR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0018\"\u0004\u0008/\u0010\u001aR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0018\"\u0004\u00081\u0010\u001aR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0018\"\u0004\u00083\u0010\u001aR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0018\"\u0004\u00085\u0010\u001aR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0018\"\u0004\u00087\u0010\u001aR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0018\"\u0004\u00089\u0010\u001aR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0018\"\u0004\u0008;\u0010\u001aR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0018\"\u0004\u0008=\u0010\u001aR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0018\"\u0004\u0008?\u0010\u001a\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;",
        "",
        "insightMessageTitle",
        "",
        "insightMessageDescription",
        "cardTitle",
        "countMessagesBlockedBySpam",
        "",
        "countNonContactMessages",
        "countMessagesBlockedByPhrase",
        "countMessagesBlockedByBlockList",
        "countMessagesBlockedByAreaBlock",
        "textMessagesBlockedBySpam",
        "textNonContactMessages",
        "textMessagesBlockedByPhrase",
        "textMessagesBlockedByBlockList",
        "textMessagesBlockedByAreaBlock",
        "textCountMessagesBlockedBySpam",
        "textCountNonContactMessages",
        "textCountMessagesBlockedByPhrase",
        "textCountMessagesBlockedByBlockList",
        "textCountMessagesBlockedByAreaBlock",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCardTitle",
        "()Ljava/lang/String;",
        "setCardTitle",
        "(Ljava/lang/String;)V",
        "getCountMessagesBlockedByAreaBlock",
        "()Ljava/lang/Long;",
        "setCountMessagesBlockedByAreaBlock",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getCountMessagesBlockedByBlockList",
        "setCountMessagesBlockedByBlockList",
        "getCountMessagesBlockedByPhrase",
        "setCountMessagesBlockedByPhrase",
        "getCountMessagesBlockedBySpam",
        "setCountMessagesBlockedBySpam",
        "getCountNonContactMessages",
        "setCountNonContactMessages",
        "getInsightMessageDescription",
        "setInsightMessageDescription",
        "getInsightMessageTitle",
        "setInsightMessageTitle",
        "getTextCountMessagesBlockedByAreaBlock",
        "setTextCountMessagesBlockedByAreaBlock",
        "getTextCountMessagesBlockedByBlockList",
        "setTextCountMessagesBlockedByBlockList",
        "getTextCountMessagesBlockedByPhrase",
        "setTextCountMessagesBlockedByPhrase",
        "getTextCountMessagesBlockedBySpam",
        "setTextCountMessagesBlockedBySpam",
        "getTextCountNonContactMessages",
        "setTextCountNonContactMessages",
        "getTextMessagesBlockedByAreaBlock",
        "setTextMessagesBlockedByAreaBlock",
        "getTextMessagesBlockedByBlockList",
        "setTextMessagesBlockedByBlockList",
        "getTextMessagesBlockedByPhrase",
        "setTextMessagesBlockedByPhrase",
        "getTextMessagesBlockedBySpam",
        "setTextMessagesBlockedBySpam",
        "getTextNonContactMessages",
        "setTextNonContactMessages",
        "build",
        "Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private cardTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countMessagesBlockedByAreaBlock:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countMessagesBlockedByBlockList:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countMessagesBlockedByPhrase:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countMessagesBlockedBySpam:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countNonContactMessages:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textCountMessagesBlockedByAreaBlock:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textCountMessagesBlockedByBlockList:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textCountMessagesBlockedByPhrase:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textCountMessagesBlockedBySpam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textCountNonContactMessages:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textMessagesBlockedByAreaBlock:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textMessagesBlockedByBlockList:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textMessagesBlockedByPhrase:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textMessagesBlockedBySpam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textNonContactMessages:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const v19, 0x3ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    move-object v1, p9

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v0, p18

    :goto_11
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v0

    invoke-direct/range {p0 .. p18}, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;
    .locals 31
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v28, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    move-object/from16 v29, v2

    move-object/from16 v25, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v2, v23

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v17, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    invoke-direct/range {v0 .. v27}, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-object v28

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textCountMessagesBlockedByAreaBlock is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textCountMessagesBlockedByBlockList is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textCountMessagesBlockedByPhrase is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textCountNonContactMessages is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textCountMessagesBlockedBySpam is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textMessagesBlockedByAreaBlock is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textMessagesBlockedByBlockList is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textMessagesBlockedByPhrase is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textNonContactMessages is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textMessagesBlockedBySpam is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "countMessagesBlockedByAreaBlock is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "countMessagesBlockedByBlockList is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "countMessagesBlockedByPhrase is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "countNonContactMessages is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "countMessagesBlockedBySpam is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cardTitle is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cardTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cardTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    return-object p0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    return-object p0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    new-instance v19, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method

.method public final countMessagesBlockedByAreaBlock(J)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    return-object p0
.end method

.method public final countMessagesBlockedByBlockList(J)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    return-object p0
.end method

.method public final countMessagesBlockedByPhrase(J)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    return-object p0
.end method

.method public final countMessagesBlockedBySpam(J)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    return-object p0
.end method

.method public final countNonContactMessages(J)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getCardTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getCountMessagesBlockedByAreaBlock()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    return-object p0
.end method

.method public final getCountMessagesBlockedByBlockList()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    return-object p0
.end method

.method public final getCountMessagesBlockedByPhrase()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    return-object p0
.end method

.method public final getCountMessagesBlockedBySpam()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    return-object p0
.end method

.method public final getCountNonContactMessages()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public final getInsightMessageDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getInsightMessageTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextCountMessagesBlockedByAreaBlock()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextCountMessagesBlockedByBlockList()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextCountMessagesBlockedByPhrase()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextCountMessagesBlockedBySpam()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextCountNonContactMessages()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextMessagesBlockedByAreaBlock()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextMessagesBlockedByBlockList()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextMessagesBlockedByPhrase()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextMessagesBlockedBySpam()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextNonContactMessages()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    if-nez p0, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public final insightMessageDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageDescription"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final insightMessageTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setCardTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    return-void
.end method

.method public final setCountMessagesBlockedByAreaBlock(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    return-void
.end method

.method public final setCountMessagesBlockedByBlockList(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    return-void
.end method

.method public final setCountMessagesBlockedByPhrase(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    return-void
.end method

.method public final setCountMessagesBlockedBySpam(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    return-void
.end method

.method public final setCountNonContactMessages(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    return-void
.end method

.method public final setInsightMessageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-void
.end method

.method public final setInsightMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-void
.end method

.method public final setTextCountMessagesBlockedByAreaBlock(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-void
.end method

.method public final setTextCountMessagesBlockedByBlockList(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    return-void
.end method

.method public final setTextCountMessagesBlockedByPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    return-void
.end method

.method public final setTextCountMessagesBlockedBySpam(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    return-void
.end method

.method public final setTextCountNonContactMessages(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    return-void
.end method

.method public final setTextMessagesBlockedByAreaBlock(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-void
.end method

.method public final setTextMessagesBlockedByBlockList(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    return-void
.end method

.method public final setTextMessagesBlockedByPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    return-void
.end method

.method public final setTextMessagesBlockedBySpam(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    return-void
.end method

.method public final setTextNonContactMessages(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    return-void
.end method

.method public final textCountMessagesBlockedByAreaBlock(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textCountMessagesBlockedByAreaBlock"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final textCountMessagesBlockedByBlockList(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textCountMessagesBlockedByBlockList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final textCountMessagesBlockedByPhrase(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textCountMessagesBlockedByPhrase"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final textCountMessagesBlockedBySpam(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textCountMessagesBlockedBySpam"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final textCountNonContactMessages(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textCountNonContactMessages"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public final textMessagesBlockedByAreaBlock(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textMessagesBlockedByAreaBlock"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final textMessagesBlockedByBlockList(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textMessagesBlockedByBlockList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public final textMessagesBlockedByPhrase(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textMessagesBlockedByPhrase"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final textMessagesBlockedBySpam(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textMessagesBlockedBySpam"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    return-object p0
.end method

.method public final textNonContactMessages(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textNonContactMessages"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->cardTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedBySpam:Ljava/lang/Long;

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countNonContactMessages:Ljava/lang/Long;

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByPhrase:Ljava/lang/Long;

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByBlockList:Ljava/lang/Long;

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->countMessagesBlockedByAreaBlock:Ljava/lang/Long;

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedBySpam:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textNonContactMessages:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByPhrase:Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByBlockList:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textMessagesBlockedByAreaBlock:Ljava/lang/String;

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedBySpam:Ljava/lang/String;

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountNonContactMessages:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByPhrase:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByBlockList:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/aisuggestion/schema/firewall/BlockMessageReportDataDocument$Builder;->textCountMessagesBlockedByAreaBlock:Ljava/lang/String;

    move-object/from16 p0, v0

    const-string v0, "Builder(insightMessageTitle="

    move-object/from16 v18, v15

    const-string v15, ", insightMessageDescription="

    move-object/from16 v19, v13

    const-string v13, ", cardTitle="

    invoke-static {v0, v1, v15, v2, v13}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countMessagesBlockedBySpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countNonContactMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countMessagesBlockedByPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countMessagesBlockedByBlockList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countMessagesBlockedByAreaBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textMessagesBlockedBySpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textNonContactMessages="

    const-string v2, ", textMessagesBlockedByPhrase="

    invoke-static {v0, v9, v1, v10, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", textMessagesBlockedByBlockList="

    const-string v2, ", textMessagesBlockedByAreaBlock="

    invoke-static {v0, v11, v1, v12, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", textCountMessagesBlockedBySpam="

    const-string v2, ", textCountNonContactMessages="

    move-object/from16 v3, v19

    invoke-static {v0, v3, v1, v14, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", textCountMessagesBlockedByPhrase="

    const-string v2, ", textCountMessagesBlockedByBlockList="

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", textCountMessagesBlockedByAreaBlock="

    const-string v2, ")"

    move-object/from16 v4, p0

    move-object/from16 v3, v18

    invoke-static {v0, v3, v1, v4, v2}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
