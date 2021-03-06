        function make_plots()
%
%   plot the data returned by test_limits code
%
        load data197.mat
        set(groot,'defaultLineLineWidth','remove')
        set(groot,'defaultLineLineWidth',2)

        ndeltas
        ngams




        figure(2);

        j1=1
        j2=ngams
        xs = gams(j1:j2)

%

        subplot(1,2,1)


        idelta = 2;
        delta1 = deltas(idelta)
%
        errs = 2*sdev_fr_table(idelta,j1:j2);
        vals1 = errs_fr_table(idelta,j1:j2);
        preds1 = errs_pred_fr_table(idelta,j1:j2);

        hold on; plot(xs,preds1,'b-.','LineWidth',2)



        j1=1
        j2=ngams
        xs = gams(j1:j2)

%


        idelta = 5;
        delta2 = deltas(idelta)
%
        errs = 2*sdev_fr_table(idelta,j1:j2);
        vals2 = errs_fr_table(idelta,j1:j2);
        preds2 = errs_pred_fr_table(idelta,j1:j2);

        hold on; plot(xs,preds2,'r--','LineWidth',2)


        j1=1
        j2=ngams
        xs = gams(j1:j2)

%

        idelta = 8;
        delta3 = deltas(idelta)
%
        errs = 2*sdev_fr_table(idelta,j1:j2);
        vals3 = errs_fr_table(idelta,j1:j2);
        preds3 = errs_pred_fr_table(idelta,j1:j2);

        hold on; plot(xs,preds3,'g-','LineWidth',2)



        delta1
        delta2
        delta3
        legend('\delta=.2','\delta=.5','\delta=.8')


        errorbar(xs,vals1,errs,'k.','LineWidth',2)
        errorbar(xs,vals2,errs,'k.','LineWidth',2)
        errorbar(xs,vals3,errs,'k.','LineWidth',2)


        ymin = 0*min(vals3+errs)
        ymax = 1.05*max(vals1+errs);



        xlabel('\gamma')
        ylabel('errors (Frobenius loss)')
        xlim([gams(j2)-.01,gams(j1)+.01,])
        ylim([ymin,ymax])


%

        subplot(1,2,2)


        idelta = 2;
        delta1 = deltas(idelta)
%
        errs = 2*sdev_op_table(idelta,j1:j2);
        vals1 = errs_op_table(idelta,j1:j2);
        preds1 = errs_pred_op_table(idelta,j1:j2);

        hold on; plot(xs,preds1,'b-.','LineWidth',2)



        j1=1
        j2=ngams
        xs = gams(j1:j2)

%


        idelta = 5;
        delta2 = deltas(idelta)
%
        errs = 2*sdev_op_table(idelta,j1:j2);
        vals2 = errs_op_table(idelta,j1:j2);
        preds2 = errs_pred_op_table(idelta,j1:j2);

        hold on; plot(xs,preds2,'r--','LineWidth',2)


        j1=1
        j2=ngams
        xs = gams(j1:j2)

%

        idelta = 8;
        delta3 = deltas(idelta)
%
        errs = 2*sdev_op_table(idelta,j1:j2);
        vals3 = errs_op_table(idelta,j1:j2);
        preds3 = errs_pred_op_table(idelta,j1:j2);

        hold on; plot(xs,preds3,'g-','LineWidth',2)



        delta1
        delta2
        delta3
        legend('\delta=.2','\delta=.5','\delta=.8')


        errorbar(xs,vals1,errs,'k.','LineWidth',2)
        errorbar(xs,vals2,errs,'k.','LineWidth',2)
        errorbar(xs,vals3,errs,'k.','LineWidth',2)


        ymin = 0*min(vals3+errs)
        ymax = 1.05*max(vals1+errs);



        xlabel('\gamma')
        ylabel('errors (operator norm loss)')
        xlim([gams(j2)-.01,gams(j1)+.01,])
        ylim([ymin,ymax])


        set(figure(2),'Position',[500,500,1075,400])
        savefig(figure(2),'fig197b')



%%%        return



        figure(1);


        j1=1
        j2=ndeltas
        xs = deltas(j1:j2)

%

        subplot(1,2,1)


        igam = 2;
        gam1 = gams(igam)
%
        errs = 2*sdev_fr_table(igam,j1:j2);
        vals1 = errs_fr_table(igam,j1:j2);
        preds1 = errs_pred_fr_table(igam,j1:j2);

        hold on; plot(xs,preds1,'b-.','LineWidth',2)
%        


        igam = 5;
        gam2 = gams(igam)

        errs = 2*sdev_fr_table(igam,j1:j2);
        vals2 = errs_fr_table(igam,j1:j2);
        preds2 = errs_pred_fr_table(igam,j1:j2);

        hold on; plot(xs,preds2,'r--','LineWidth',2)

%

        igam = 8;
        gam3 = gams(igam)

        errs = 2*sdev_fr_table(igam,j1:j2);
        vals3 = errs_fr_table(igam,j1:j2);
        preds3 = errs_pred_fr_table(igam,j1:j2);
        hold on; plot(xs,preds3,'g-','LineWidth',2)

%
        legend('\gamma=.9','\gamma=.6','\gamma=.3')


        errorbar(xs,vals1,errs,'k.','LineWidth',2)
        errorbar(xs,vals2,errs,'k.','LineWidth',2)
        errorbar(xs,vals3,errs,'k.','LineWidth',2)


        ymin = 0*min(vals3+errs)
        ymax = 1.05*max(vals1+errs);


        xlabel('\delta')
        ylabel('errors (Frobenius loss)')
        xlim([deltas(j1)-.01,deltas(j2)+.01])
        ylim([ymin,ymax])




        subplot(1,2,2)


        igam = 2;
        gam1 = gams(igam)
%
        errs = 2*sdev_op_table(igam,j1:j2);
        vals1 = errs_op_table(igam,j1:j2);
        preds1 = errs_pred_op_table(igam,j1:j2);

        hold on; plot(xs,preds1,'b-.','LineWidth',2)
%        


        igam = 5;
        gam2 = gams(igam)

        errs = 2*sdev_op_table(igam,j1:j2);
        vals2 = errs_op_table(igam,j1:j2);
        preds2 = errs_pred_op_table(igam,j1:j2);

        hold on; plot(xs,preds2,'r--','LineWidth',2)

%

        igam = 8;
        gam3 = gams(igam)

        errs = 2*sdev_op_table(igam,j1:j2);
        vals3 = errs_op_table(igam,j1:j2);
        preds3 = errs_pred_op_table(igam,j1:j2);
        hold on; plot(xs,preds3,'g-','LineWidth',2)

%
        legend('\gamma=.9','\gamma=.6','\gamma=.3')


        errorbar(xs,vals1,errs,'k.','LineWidth',2)
        errorbar(xs,vals2,errs,'k.','LineWidth',2)
        errorbar(xs,vals3,errs,'k.','LineWidth',2)


        ymin = 0*min(vals3+errs)
        ymax = 1.05*max(vals1+errs);


        xlabel('\delta')
        ylabel('errors (operator norm loss)')
        xlim([deltas(j1)-.01,deltas(j2)+.01])
        ylim([ymin,ymax])



        set(figure(1),'Position',[500,500,1075,400])
        savefig(figure(1),'fig197a')
