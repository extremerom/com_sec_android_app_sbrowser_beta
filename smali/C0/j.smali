.class public abstract LC0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[LAb/u;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ltb/n;

    const-class v1, LC0/j;

    const-string v2, "stateDescription"

    const-string v3, "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/n;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->d(Ltb/n;)LAb/i;

    move-result-object v0

    const-string v3, "progressBarRangeInfo"

    const-string v5, "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;"

    invoke-static {v1, v3, v5, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v3

    const-string v5, "paneTitle"

    const-string v6, "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-static {v1, v5, v6, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v5

    const-string v6, "liveRegion"

    const-string v7, "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v6, v7, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v6

    const-string v7, "focused"

    const-string v8, "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v7, v8, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v7

    const-string v8, "isContainer"

    const-string v9, "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v8, v9, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v8

    const-string v9, "isTraversalGroup"

    const-string v10, "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v9, v10, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v9

    const-string v10, "traversalIndex"

    const-string v11, "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F"

    invoke-static {v1, v10, v11, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v10

    const-string v11, "horizontalScrollAxisRange"

    const-string v12, "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-static {v1, v11, v12, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v11

    const-string v12, "verticalScrollAxisRange"

    const-string v13, "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-static {v1, v12, v13, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v12

    const-string v13, "role"

    const-string v14, "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v13, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v13

    const-string v14, "testTag"

    const-string v15, "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-static {v1, v14, v15, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "textSubstitution"

    move-object/from16 v16, v14

    const-string v14, "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "isShowingTextSubstitution"

    move-object/from16 v17, v14

    const-string v14, "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "editableText"

    move-object/from16 v18, v14

    const-string v14, "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "textSelectionRange"

    move-object/from16 v19, v14

    const-string v14, "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "imeAction"

    move-object/from16 v20, v14

    const-string v14, "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "selected"

    move-object/from16 v21, v14

    const-string v14, "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "collectionInfo"

    move-object/from16 v22, v14

    const-string v14, "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "collectionItemInfo"

    move-object/from16 v23, v14

    const-string v14, "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "toggleableState"

    move-object/from16 v24, v14

    const-string v14, "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v14

    const-string v15, "customActions"

    move-object/from16 v25, v14

    const-string v14, "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;"

    invoke-static {v1, v15, v14, v4, v2}, LB/e;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/i;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [LAb/u;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    aput-object v3, v2, v4

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v8, v2, v0

    const/4 v0, 0x6

    aput-object v9, v2, v0

    const/4 v0, 0x7

    aput-object v10, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v12, v2, v0

    const/16 v0, 0xa

    aput-object v13, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v1, v2, v0

    sput-object v2, LC0/j;->a:[LAb/u;

    sget-object v0, LC0/i;->a:LC0/k;

    sget-object v0, LC0/d;->a:LC0/k;

    return-void
.end method
