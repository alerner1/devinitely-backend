class JobLeadsController < ApplicationController
  def index
    job_leads = JobLead.all
    render json: job_leads
  end

  def show
    job_lead = JobLead.find(params[:id])
    render json: job_lead
  end

  def create
    @job_lead = JobLead.create(job_leads_params)
    if @job_lead.valid?
      render json: {job_lead: JobLeadSerializer.new(@job_lead)}, status: :created
    else
      render json: { error: 'failed to create job lead' }, status: :not_acceptable
    end
  end

  private

  def job_leads_params
    params.require(:job_leads).permit(:company, :user_id, :title, :link, :date, :contact_method, :referral, checklist_attributes: {}, contact_attributes: {}, notes_attributes: [:content])
  end
end
